.class Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips$1;
.super Ljava/lang/Object;
.source "FunctionKeyTips.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips$1;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 63
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips$1;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->-$$Nest$fgetmActivityHistory(Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 64
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips$1;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    goto :goto_0

    .line 66
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    .line 67
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips$1;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/samsung/android/settings/usefulfeature/FunctionKeySettings;

    .line 69
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_function_key_setting_title:I

    .line 70
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips$1;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyTips;->getMetricsCategory()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :goto_0
    return-void
.end method
