.class public Lcom/samsung/android/settings/actions/development/ActionControlDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mResponseView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/actions/development/ActionControlDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/actions/development/CommandManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/actions/development/CommandManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "deeplink"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "CommandManager"

    const-string v3, "command"

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, v0, Lcom/samsung/android/settings/actions/development/CommandManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    const-string v8, "method_LOAD"

    invoke-virtual {v0, v7, v8, v1, v6}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v7, "response_code"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v4, :cond_0

    if-ne v7, v5, :cond_1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    new-instance v3, Lcom/samsung/android/sdk/command/Command;

    invoke-direct {v3, v0}, Lcom/samsung/android/sdk/command/Command;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "failed to load a command : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v6

    :goto_0
    if-eqz v3, :cond_f

    iget p1, v3, Lcom/samsung/android/sdk/command/Command;->mStatus:I

    const/4 v0, 0x2

    if-eq p1, v4, :cond_5

    if-eq p1, v0, :cond_4

    if-eq p1, v5, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const-string p1, "STATUS_UNKNOWN"

    goto :goto_1

    :cond_2
    const-string p1, "STATUS_DISABLED"

    goto :goto_1

    :cond_3
    const-string p1, "STATUS_ERROR"

    goto :goto_1

    :cond_4
    const-string p1, "STATUS_NOT_FOUND"

    goto :goto_1

    :cond_5
    const-string p1, "STATUS_OK"

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d07e2

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v2, v3, Lcom/samsung/android/sdk/command/Command;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/command/template/CommandTemplate;->getTemplateType()I

    move-result v7

    iget-object v8, v3, Lcom/samsung/android/sdk/command/Command;->mTitle:Ljava/lang/String;

    const/4 v9, 0x0

    if-eq v7, v4, :cond_b

    if-eq v7, v0, :cond_a

    if-eq v7, v5, :cond_9

    const/4 v0, 0x5

    if-eq v7, v0, :cond_6

    goto/16 :goto_4

    :cond_6
    check-cast v2, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;

    iget-object v0, v2, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntries:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;

    iget-object v10, v7, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;->mPrimaryTitle:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v7, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;->mValue:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_8

    goto/16 :goto_4

    :cond_8
    new-instance v0, Lcom/samsung/android/settings/actions/development/ActionControlDialog$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v5}, Lcom/samsung/android/settings/actions/development/ActionControlDialog$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/actions/development/ActionControlDialog;Ljava/util/List;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v10, 0x7f0d07e3

    invoke-virtual {v7, v10, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioGroup;

    invoke-virtual {v6, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    move v0, v9

    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v10, 0x7f0d07e4

    invoke-virtual {v7, v10, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v10, 0x7f0a0c26

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v7, v10}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v0}, Landroid/widget/RadioButton;->setId(I)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget-object v11, v2, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mCurrentActiveValue:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    check-cast v2, Lcom/samsung/android/sdk/command/template/SliderTemplate;

    iget v0, v2, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mMinValue:F

    float-to-int v0, v0

    iget v4, v2, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mMaxValue:F

    float-to-int v4, v4

    iget v2, v2, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mCurrentValue:F

    float-to-int v2, v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v7, 0x7f0d07e5

    invoke-virtual {v5, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMin(I)V

    invoke-virtual {v6, v4}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    invoke-virtual {v6, v2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    new-instance v0, Lcom/samsung/android/settings/actions/development/ActionControlDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/actions/development/ActionControlDialog$1;-><init>(Lcom/samsung/android/settings/actions/development/ActionControlDialog;)V

    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    goto :goto_4

    :cond_a
    check-cast v2, Lcom/samsung/android/sdk/command/template/ToggleTemplate;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0d07e6

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/Switch;

    invoke-virtual {v6, v8}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, v2, Lcom/samsung/android/sdk/command/template/ToggleTemplate;->mIsChecked:Z

    invoke-virtual {v6, v0}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance v0, Lcom/samsung/android/settings/actions/development/ActionControlDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/actions/development/ActionControlDialog$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/actions/development/ActionControlDialog;)V

    invoke-virtual {v6, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d07e1

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/samsung/android/settings/actions/development/ActionControlDialog$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/actions/development/ActionControlDialog$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/actions/development/ActionControlDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    move-object v6, v0

    :cond_c
    :goto_4
    if-eqz v6, :cond_d

    const v0, 0x7f0a0435

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_d
    const v0, 0x7f0a0efe

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "Status : "

    const-string v4, ", Status Code : "

    invoke-static {v2, p1, v4}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, v3, Lcom/samsung/android/sdk/command/Command;->mStatusCode:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0ca3

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->mResponseView:Landroid/widget/TextView;

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    iget-object p1, v3, Lcom/samsung/android/sdk/command/Command;->mLaunchIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_e

    new-instance v0, Lcom/samsung/android/settings/actions/development/ActionControlDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/actions/development/ActionControlDialog$$ExternalSyntheticLambda0;-><init>(Landroid/app/PendingIntent;)V

    const-string p1, "Go to settings"

    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_e
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public final setAction(Lcom/samsung/android/sdk/command/action/CommandAction;)V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/actions/development/CommandManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/actions/development/CommandManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "deeplink"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "CommandManager"

    const-string/jumbo v3, "perform command action : "

    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "action"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/action/CommandAction;->getDataBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v4, v5, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p1, v0, Lcom/samsung/android/settings/actions/development/CommandManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v5, "method_ACTION"

    invoke-virtual {p1, v0, v5, v1, v4}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string/jumbo v0, "response_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "response_message"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->mResponseView:Landroid/widget/TextView;

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, "RESPONSE_UNKNOWN"

    goto :goto_0

    :cond_0
    const-string v0, "RESPONSE_OK_ASYNC"

    goto :goto_0

    :cond_1
    const-string v0, "RESPONSE_FAIL"

    goto :goto_0

    :cond_2
    const-string v0, "RESPONSE_OK"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Response : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Response message : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method
