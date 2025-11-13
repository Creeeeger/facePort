.class public Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ScreenModeRoutineActivity.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

.field private mRecoverScreenMode:I

.field private mRequestParameters:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

.field private mScreenModeRoutineHelper:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmParameterValues(Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenModeRoutineHelper(Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;)Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;->mScreenModeRoutineHelper:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private showScreenModeDialog(Ljava/lang/String;F)V
    .locals 5

    .line 85
    iget-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;->mScreenModeRoutineHelper:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;

    invoke-virtual {p1}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->getScreenModeRoutineItems()Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->getSize()I

    move-result v0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showChooseVpnProfileDialog: itemCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenMode.RoutineActivity"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->screen_mode_routine_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 90
    sget v1, Lcom/android/settings/R$id;->mode_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 91
    invoke-virtual {p1}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->getNameStringArrary()[Ljava/lang/String;

    move-result-object v2

    .line 92
    new-instance v3, Landroid/widget/ArrayAdapter;

    sget v4, Lcom/android/settings/R$layout;->screen_mode_routine_dialog_item:I

    invoke-direct {v3, p0, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v2, 0x1

    .line 93
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    float-to-int p2, p2

    .line 94
    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->getPositionByValue(I)I

    move-result v3

    invoke-virtual {v1, v3, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 95
    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->getPositionByValue(I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setSelection(I)V

    .line 97
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/android/settings/R$string;->sec_screen_mode_setting:I

    .line 98
    invoke-virtual {p2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 99
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 100
    invoke-virtual {p2, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity$3;-><init>(Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;)V

    .line 101
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    sget v0, Lcom/android/settings/R$string;->common_cancel:I

    new-instance v2, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity$2;-><init>(Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;)V

    .line 108
    invoke-virtual {p2, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    sget v0, Lcom/android/settings/R$string;->common_done:I

    new-instance v2, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity$1;

    invoke-direct {v2, p0, v1, p1}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity$1;-><init>(Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;Landroid/widget/ListView;Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;)V

    .line 115
    invoke-virtual {p2, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 141
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 142
    new-instance p2, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity$4;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity$4;-><init>(Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 148
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const/4 p0, -0x1

    .line 149
    invoke-virtual {p1, p0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 40
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 41
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->TAG:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;->mContext:Landroid/content/Context;

    .line 45
    new-instance v1, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;->mScreenModeRoutineHelper:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;

    .line 47
    iget-object v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    if-nez v1, :cond_0

    .line 48
    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->newInstance()Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;->mScreenModeRoutineHelper:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;

    const-string v2, "ScreenMode.RoutineActivity"

    if-nez v1, :cond_1

    const-string p0, "screenModeRoutineHelper is null"

    .line 51
    invoke-static {v2, p0}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[mRecoverScreenMode]ContentResolver cr :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[mRecoverScreenMode] PUT mRecoverScreenMode getInt test "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "screen_mode_automatic_setting"

    invoke-static {v1, v4, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {v1}, Lcom/samsung/android/settings/display/NewModePreview;->getCurrentScreenMode(Landroid/content/ContentResolver;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;->mRecoverScreenMode:I

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[mRecoverScreenMode]  PUT mRecoverScreenMode "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;->mRecoverScreenMode:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ScreenModeRoutineActivity] PUT mRecoverScreenMode ?"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;->mRecoverScreenMode:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iget v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;->mRecoverScreenMode:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v3, "screen_mode_routine_recover_key"

    invoke-virtual {p1, v3, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->fromIntent(Landroid/content/Intent;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;->mRequestParameters:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    const/high16 v1, 0x40800000    # 4.0f

    .line 62
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v3, "screen_mode_routine_key"

    invoke-virtual {p1, v3, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showScreenModeDialog Value:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;->mScreenModeRoutineHelper:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;

    iget v2, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;->mRecoverScreenMode:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->setScreenModeRecover(I)V

    .line 65
    iget-object v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    .line 66
    new-instance v1, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;

    invoke-direct {v1}, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;-><init>()V

    .line 67
    iget-object v2, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;->mParameterValues:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;->setParameterValues(Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;)Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;

    .line 68
    invoke-virtual {v1}, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;->build()Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult;

    move-result-object v1

    .line 69
    invoke-virtual {v1, p0}, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult;->sendActivityResult(Landroid/app/Activity;)V

    .line 72
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;->showScreenModeDialog(Ljava/lang/String;F)V

    :goto_0
    return-void
.end method
