.class public Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;
.super Lcom/android/settings/core/SettingsBaseActivity;
.source "LifeStyleDND.java"


# instance fields
.field private APPPCIKER:Ljava/lang/String;

.field private CALLMESSAGE:Ljava/lang/String;

.field private DETAIL:Ljava/lang/String;

.field private REQUEST_CODE_OK:I

.field private RSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

.field private fromIntent:Ljava/lang/String;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/android/settings/core/SettingsBaseActivity;-><init>()V

    const-string/jumbo v0, "wizard_call_message"

    .line 37
    iput-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->CALLMESSAGE:Ljava/lang/String;

    const-string/jumbo v0, "wizard_app_picker"

    .line 38
    iput-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->APPPCIKER:Ljava/lang/String;

    const-string v0, "detail"

    .line 39
    iput-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->DETAIL:Ljava/lang/String;

    const/4 v0, 0x1

    .line 49
    iput v0, p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->REQUEST_CODE_OK:I

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 8

    .line 57
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->fromIntent:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->CALLMESSAGE:Ljava/lang/String;

    const-string v2, "contact_options"

    const-string/jumbo v3, "repeat_options"

    const-string v4, "call_options"

    const-string/jumbo v5, "messages_options"

    if-ne v0, v1, :cond_0

    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 59
    iget-object v1, p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->RSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getMessageOption()F

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 60
    iget-object v1, p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->RSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getCallOption()F

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 61
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getRepeatedCaller()Z

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getPeoplesummary()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "people_summary"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getContact_exist_list()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    iget v1, p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->REQUEST_CODE_OK:I

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->APPPCIKER:Ljava/lang/String;

    const-string v6, "app_options"

    if-ne v0, v1, :cond_1

    .line 67
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 68
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getApp_exist_list()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getAppSummary()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_description"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    iget v1, p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->REQUEST_CODE_OK:I

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 73
    :cond_1
    sget v0, Lcom/android/settings/R$string;->zen_mode_settings_title:I

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(I)V

    .line 74
    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->newInstance()Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->RSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getLifeStyleZenState()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v7, "dnd_switch"

    invoke-virtual {v0, v7, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    .line 76
    iget-object v1, p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->RSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getMessageOption()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    .line 77
    iget-object v1, p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->RSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getCallOption()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    .line 78
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getApp_exist_list()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    .line 79
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getRepeatedCaller()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    .line 80
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getContact_exist_list()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    .line 81
    new-instance v1, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;

    invoke-direct {v1}, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;-><init>()V

    .line 82
    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;->setParameterValues(Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;)Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;

    .line 83
    invoke-virtual {v1}, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;->build()Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult;

    move-result-object v0

    .line 84
    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult;->sendActivityResult(Landroid/app/Activity;)V

    .line 86
    :goto_0
    invoke-super {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 91
    invoke-super/range {p0 .. p1}, Lcom/android/settings/core/SettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x1

    .line 93
    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->disableExtendedAppBar(Z)V

    .line 94
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 95
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getInstance()Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    move-result-object v5

    iput-object v5, v0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->RSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    .line 96
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, v0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->pm:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    .line 99
    iget-object v2, v0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->RSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    const-string/jumbo v4, "messageOption"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setMessageOption(I)V

    const-string v2, "callOption"

    .line 100
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setCallOption(I)V

    const-string/jumbo v2, "repeatedCaller"

    .line 101
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setRepeatedCaller(Z)V

    .line 102
    new-instance v2, Ljava/util/HashSet;

    new-array v4, v3, [Ljava/lang/String;

    iget-object v6, v0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->RSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    const-string v7, "appList"

    .line 103
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setAppListMigration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 102
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 104
    iget-object v4, v0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->RSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setApp_exist_list(Ljava/util/HashSet;)V

    .line 106
    new-instance v2, Ljava/util/ArrayList;

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "contactList"

    .line 107
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 106
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 108
    iget-object v3, v0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->RSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setContact_exist_list(Ljava/util/List;)V

    const-string v2, "fromIntent"

    .line 109
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->fromIntent:Ljava/lang/String;

    goto/16 :goto_1

    .line 111
    :cond_0
    invoke-static {v4}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->fromIntent(Landroid/content/Intent;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    move-result-object v6

    const-string/jumbo v7, "repeat_options"

    const-string v8, "call_options"

    const-string/jumbo v9, "messages_options"

    const-string v10, "contact_options"

    const-string v11, ""

    const-string v12, "app_options"

    const/high16 v13, -0x40800000    # -1.0f

    const-string/jumbo v14, "source"

    if-eqz v6, :cond_1

    .line 112
    invoke-virtual {v4, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v15, "settings"

    if-eq v6, v15, :cond_1

    .line 113
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->fromIntent(Landroid/content/Intent;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    move-result-object v6

    .line 114
    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v5, "dnd_switch"

    invoke-virtual {v6, v5, v15}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 115
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v6, v9, v5}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 116
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v6, v8, v3}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 117
    invoke-virtual {v6, v12, v11}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 118
    invoke-virtual {v6, v7, v15}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    .line 119
    invoke-virtual {v6, v10, v11}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 121
    iget-object v1, v0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->RSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    float-to-int v5, v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setMessageOption(I)V

    float-to-int v1, v3

    .line 122
    invoke-static {v1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setCallOption(I)V

    .line 123
    invoke-static {v15}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setRepeatedCaller(Z)V

    .line 124
    new-instance v1, Ljava/util/HashSet;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    iget-object v15, v0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->RSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-virtual {v15, v13}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setAppListMigration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    aput-object v13, v5, v15

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 125
    iget-object v5, v0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->RSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-virtual {v5, v1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setApp_exist_list(Ljava/util/HashSet;)V

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    new-array v5, v3, [Ljava/lang/String;

    aput-object v6, v5, v15

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 127
    iget-object v3, v0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->RSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setContact_exist_list(Ljava/util/List;)V

    .line 130
    :cond_1
    invoke-virtual {v4, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/16 v5, 0x1001

    if-eqz v1, :cond_4

    invoke-virtual {v4, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, v0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->CALLMESSAGE:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/high16 v1, -0x40800000    # -1.0f

    .line 131
    invoke-virtual {v4, v9, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v6

    .line 132
    invoke-virtual {v4, v8, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    const/4 v8, 0x0

    .line 133
    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 134
    iget-object v8, v0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->RSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    float-to-int v6, v6

    invoke-virtual {v8, v6}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setMessageOption(I)V

    float-to-int v1, v1

    .line 135
    invoke-static {v1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setCallOption(I)V

    .line 136
    invoke-static {v7}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setRepeatedCaller(Z)V

    .line 137
    invoke-virtual {v4, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 138
    invoke-virtual {v4, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 139
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 140
    array-length v6, v1

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v1, v7

    .line 141
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 143
    :cond_2
    iget-object v1, v0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->RSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setContact_exist_list(Ljava/util/List;)V

    .line 146
    :cond_3
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 147
    invoke-virtual {v1, v5}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/android/settings/R$id;->content_frame:I

    const-class v4, Lcom/android/settings/notification/zen/ZenModePeopleSettings;

    .line 148
    invoke-virtual {v1, v2, v4, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILjava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 149
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 150
    iget-object v1, v0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->CALLMESSAGE:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->fromIntent:Ljava/lang/String;

    goto :goto_1

    .line 151
    :cond_4
    invoke-virtual {v4, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v4, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, v0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->APPPCIKER:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    .line 152
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVisible(Z)V

    .line 153
    invoke-virtual {v0, v11}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {v4, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 155
    invoke-virtual {v4, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 156
    new-instance v6, Ljava/util/HashSet;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    iget-object v8, v0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->RSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-virtual {v8, v4}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setAppListMigration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v1

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 157
    iget-object v1, v0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->RSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setApp_exist_list(Ljava/util/HashSet;)V

    .line 160
    :cond_5
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 161
    invoke-virtual {v1, v5}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/android/settings/R$id;->content_frame:I

    const-class v4, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;

    .line 162
    invoke-virtual {v1, v2, v4, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILjava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 164
    iget-object v1, v0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->APPPCIKER:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->fromIntent:Ljava/lang/String;

    goto :goto_1

    :cond_6
    if-nez p1, :cond_7

    .line 167
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 168
    invoke-virtual {v1, v5}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/android/settings/R$id;->content_frame:I

    const-class v4, Lcom/android/settings/notification/zen/lifestyle/LifeStyleZenFragment;

    .line 169
    invoke-virtual {v1, v2, v4, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILjava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 170
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 171
    iget-object v1, v0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->DETAIL:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->fromIntent:Ljava/lang/String;

    :cond_7
    :goto_1
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 179
    invoke-super {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 184
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 186
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getApp_exist_list()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appList"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getContact_exist_list()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contactList"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->fromIntent:Ljava/lang/String;

    const-string v1, "fromIntent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->RSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getMessageOption()F

    move-result v0

    const-string/jumbo v1, "messageOption"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 191
    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;->RSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getCallOption()F

    move-result p0

    const-string v0, "callOption"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 192
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getRepeatedCaller()Z

    move-result p0

    const-string/jumbo v0, "repeatedCaller"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
