.class Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$1;
.super Ljava/lang/Object;
.source "FunctionKeySettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 206
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->-$$Nest$fgetmActivityHistory(Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "setting"

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->-$$Nest$fgetmActivityHistory(Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 207
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    goto :goto_0

    .line 209
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    .line 210
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;

    .line 212
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_function_key_tips_title:I

    .line 213
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;

    .line 214
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;->getMetricsCategory()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 215
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method
