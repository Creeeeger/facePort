.class public Lcom/samsung/android/settings/actions/development/ActionControlDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "ActionControlDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mResponseView:Landroid/widget/TextView;

.field private mStatusView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$3FNEDiziqZZ_e6MRPDkLbIeMle0(Lcom/samsung/android/settings/actions/development/ActionControlDialog;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->lambda$bindCustomInputControlView$3(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$a6ss07V2ff7K_wkFevAmsfF_c9c(Lcom/samsung/android/settings/actions/development/ActionControlDialog;Ljava/util/List;Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->lambda$bindRadioGroupControlView$2(Ljava/util/List;Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rIuelSU_QBt07o3ErNRVEK2V4Jk(Landroid/app/PendingIntent;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->lambda$onCreateDialog$0(Landroid/app/PendingIntent;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$tGkcqrFRT4WhgKw-FPEj9RdxVJ0(Lcom/samsung/android/settings/actions/development/ActionControlDialog;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->lambda$bindSwitchBarControlView$1(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmResponseView(Lcom/samsung/android/settings/actions/development/ActionControlDialog;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->mResponseView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetReadableResponseCode(Lcom/samsung/android/settings/actions/development/ActionControlDialog;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->getReadableResponseCode(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetAction(Lcom/samsung/android/settings/actions/development/ActionControlDialog;Lcom/samsung/android/sdk/command/action/CommandAction;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->setAction(Lcom/samsung/android/sdk/command/action/CommandAction;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/samsung/android/settings/actions/development/ActionControlDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method private bindCustomInputControlView(Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .line 211
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->sec_action_control_custom_input_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 212
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 213
    new-instance p1, Lcom/samsung/android/settings/actions/development/ActionControlDialog$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/actions/development/ActionControlDialog$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/actions/development/ActionControlDialog;)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-object v0
.end method

.method private bindRadioGroupControlView(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .line 187
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    .line 191
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/actions/development/ActionControlDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/settings/actions/development/ActionControlDialog$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/actions/development/ActionControlDialog;Ljava/util/List;)V

    .line 195
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/android/settings/R$layout;->sec_action_control_radio_group:I

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 196
    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const/4 v0, 0x0

    .line 198
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 199
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/android/settings/R$layout;->sec_action_control_radio_item:I

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 200
    sget v3, Lcom/android/settings/R$id;->radio:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 201
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 202
    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setId(I)V

    .line 203
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private bindSeekBarControlView(III)Landroid/view/View;
    .locals 3

    .line 161
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->sec_action_control_seekbar_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SeslSeekBar;

    .line 162
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMin(I)V

    .line 163
    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    .line 164
    invoke-virtual {v0, p3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 165
    new-instance p1, Lcom/samsung/android/settings/actions/development/ActionControlDialog$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/actions/development/ActionControlDialog$1;-><init>(Lcom/samsung/android/settings/actions/development/ActionControlDialog;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    return-object v0
.end method

.method private bindSwitchBarControlView(Ljava/lang/String;Z)Landroid/view/View;
    .locals 3

    .line 151
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->sec_action_control_toggle_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 152
    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 154
    new-instance p1, Lcom/samsung/android/settings/actions/development/ActionControlDialog$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/actions/development/ActionControlDialog$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/actions/development/ActionControlDialog;)V

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object v0
.end method

.method private getCommandId()Ljava/lang/String;
    .locals 1

    .line 230
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "deeplink"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getControlView(Lcom/samsung/android/sdk/command/Command;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 113
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command;->getCommandTemplate()Lcom/samsung/android/sdk/command/template/CommandTemplate;

    move-result-object v1

    .line 115
    invoke-virtual {v1}, Lcom/samsung/android/sdk/command/template/CommandTemplate;->getTemplateType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 p1, 0x3

    if-eq v2, p1, :cond_2

    const/4 p1, 0x5

    if-eq v2, p1, :cond_0

    goto :goto_1

    .line 125
    :cond_0
    check-cast v1, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;

    .line 126
    invoke-virtual {v1}, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->getCurrentActiveValue()Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-virtual {v1}, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->getEntries()Ljava/util/List;

    move-result-object v0

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 129
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;

    .line 132
    invoke-virtual {v3}, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;->getPrimaryTitle()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {v3}, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :cond_1
    invoke-direct {p0, v1, v2, p1}, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->bindRadioGroupControlView(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 121
    :cond_2
    check-cast v1, Lcom/samsung/android/sdk/command/template/SliderTemplate;

    .line 122
    invoke-virtual {v1}, Lcom/samsung/android/sdk/command/template/SliderTemplate;->getMinValue()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/command/template/SliderTemplate;->getMaxValue()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/command/template/SliderTemplate;->getCurrentValue()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->bindSeekBarControlView(III)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 117
    :cond_3
    check-cast v1, Lcom/samsung/android/sdk/command/template/ToggleTemplate;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/command/template/ToggleTemplate;->isChecked()Z

    move-result v0

    .line 118
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->bindSwitchBarControlView(Ljava/lang/String;Z)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 139
    :cond_4
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->bindCustomInputControlView(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_1
    return-object v0
.end method

.method private getManager()Lcom/samsung/android/settings/actions/development/CommandManager;
    .locals 0

    .line 253
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/actions/development/CommandManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/actions/development/CommandManager;

    move-result-object p0

    return-object p0
.end method

.method private getReadableResponseCode(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const-string p0, "RESPONSE_UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "RESPONSE_OK_ASYNC"

    return-object p0

    :cond_1
    const-string p0, "RESPONSE_FAIL"

    return-object p0

    :cond_2
    const-string p0, "RESPONSE_OK"

    return-object p0
.end method

.method private getReadableStatus(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const-string p0, "STATUS_UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "STATUS_DISABLED"

    return-object p0

    :cond_1
    const-string p0, "STATUS_ERROR"

    return-object p0

    :cond_2
    const-string p0, "STATUS_NOT_FOUND"

    return-object p0

    :cond_3
    const-string p0, "STATUS_OK"

    return-object p0
.end method

.method private synthetic lambda$bindCustomInputControlView$3(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x6

    if-ne p2, p3, :cond_1

    .line 215
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 216
    new-instance p2, Lcom/samsung/android/sdk/command/action/JSONStringAction;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/command/action/JSONStringAction;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->setAction(Lcom/samsung/android/sdk/command/action/CommandAction;)V

    const/4 p0, 0x1

    return p0

    .line 219
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->TAG:Ljava/lang/String;

    const-string p1, "JSONStringAction requires NonNull value"

    invoke-static {p0, p1}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$bindRadioGroupControlView$2(Ljava/util/List;Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 192
    new-instance p2, Lcom/samsung/android/sdk/command/action/StringAction;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/command/action/StringAction;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->setAction(Lcom/samsung/android/sdk/command/action/CommandAction;)V

    return-void
.end method

.method private synthetic lambda$bindSwitchBarControlView$1(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 154
    new-instance p1, Lcom/samsung/android/sdk/command/action/BooleanAction;

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/command/action/BooleanAction;-><init>(Z)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->setAction(Lcom/samsung/android/sdk/command/action/CommandAction;)V

    return-void
.end method

.method private static synthetic lambda$onCreateDialog$0(Landroid/app/PendingIntent;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 98
    :try_start_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 100
    sget-object p1, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot launch a settings : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/PendingIntent$CanceledException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/samsung/android/settings/actions/development/ActionControlDialog;
    .locals 3

    .line 53
    new-instance v0, Lcom/samsung/android/settings/actions/development/ActionControlDialog;

    invoke-direct {v0}, Lcom/samsung/android/settings/actions/development/ActionControlDialog;-><init>()V

    .line 54
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "deeplink"

    .line 55
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setAction(Lcom/samsung/android/sdk/command/action/CommandAction;)V
    .locals 3

    .line 234
    invoke-direct {p0}, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->getManager()Lcom/samsung/android/settings/actions/development/CommandManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->getCommandId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/actions/development/ActionControlDialog$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/actions/development/ActionControlDialog$2;-><init>(Lcom/samsung/android/settings/actions/development/ActionControlDialog;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/settings/actions/development/CommandManager;->performAction(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;Lcom/samsung/android/sdk/command/provider/ICommandActionCallback;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .line 69
    invoke-direct {p0}, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->getManager()Lcom/samsung/android/settings/actions/development/CommandManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->getCommandId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/actions/development/CommandManager;->loadCommand(Ljava/lang/String;)Lcom/samsung/android/sdk/command/Command;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 72
    invoke-virtual {v0}, Lcom/samsung/android/sdk/command/Command;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-virtual {v0}, Lcom/samsung/android/sdk/command/Command;->getStatus()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->getReadableStatus(I)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-virtual {v0}, Lcom/samsung/android/sdk/command/Command;->getStatusCode()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/android/settings/R$layout;->sec_action_control_dialog:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 76
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->getControlView(Lcom/samsung/android/sdk/command/Command;)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 79
    sget v6, Lcom/android/settings/R$id;->control_container:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 80
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 81
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 84
    :cond_0
    sget v4, Lcom/android/settings/R$id;->status:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->mStatusView:Landroid/widget/TextView;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    const/4 v1, 0x1

    aput-object v2, v6, v1

    const-string v1, "Status : %s, Status Code : %s"

    .line 85
    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    sget v1, Lcom/android/settings/R$id;->response:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->mResponseView:Landroid/widget/TextView;

    .line 89
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 91
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 93
    invoke-virtual {v0}, Lcom/samsung/android/sdk/command/Command;->getLaunchIntent()Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 96
    new-instance v0, Lcom/samsung/android/settings/actions/development/ActionControlDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/actions/development/ActionControlDialog$$ExternalSyntheticLambda0;-><init>(Landroid/app/PendingIntent;)V

    const-string p1, "Go to settings"

    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 105
    :cond_1
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0

    .line 108
    :cond_2
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method
