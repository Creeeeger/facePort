.class public Lcom/samsung/android/settings/bixby/target/SamsungKeyboardAction;
.super Lcom/samsung/android/settings/bixby/actions/Action;
.source "SamsungKeyboardAction.java"


# instance fields
.field private final DEFAULT_SAMSUNGKEYBOARD_PKG_NAME:Ljava/lang/String;

.field private final SAMSUNG_HONEYBOARD_PKG_NAME:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private final retValue:Ljava/lang/String;

.field private taskId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/actions/Action;-><init>()V

    .line 14
    const-class v0, Lcom/samsung/android/settings/bixby/target/SamsungKeyboardAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/SamsungKeyboardAction;->TAG:Ljava/lang/String;

    const-string v0, "com.sec.android.inputmethod"

    .line 15
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/SamsungKeyboardAction;->DEFAULT_SAMSUNGKEYBOARD_PKG_NAME:Ljava/lang/String;

    const-string v0, "com.samsung.android.honeyboard"

    .line 16
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/SamsungKeyboardAction;->SAMSUNG_HONEYBOARD_PKG_NAME:Ljava/lang/String;

    .line 17
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SIP_CONFIG_PACKAGE_NAME"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/SamsungKeyboardAction;->retValue:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/SamsungKeyboardAction;->context:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/samsung/android/settings/bixby/target/SamsungKeyboardAction;->taskId:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public doGotoAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .line 31
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/high16 v0, 0x34000000

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 33
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/SamsungKeyboardAction;->retValue:Ljava/lang/String;

    const-string v1, "com.samsung.android.honeyboard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.honeyboard.settings.common.HoneyBoardSettingsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/SamsungKeyboardAction;->retValue:Ljava/lang/String;

    const-string v1, "com.sec.android.inputmethod"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.inputmethod.SamsungKeypadSettings"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 40
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/SamsungKeyboardAction;->taskId:Ljava/lang/Integer;

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->setTaskIdToIntent(Landroid/content/Intent;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 42
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 43
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/SamsungKeyboardAction;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "success"

    goto :goto_1

    :cond_2
    const-string p1, "fail"

    .line 47
    :goto_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
