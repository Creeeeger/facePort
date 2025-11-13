.class public Lcom/samsung/android/settings/bixby/target/DirectShareAction;
.super Lcom/samsung/android/settings/bixby/actions/Action;
.source "DirectShareAction.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private taskId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/actions/Action;-><init>()V

    .line 13
    const-class v0, Lcom/samsung/android/settings/bixby/target/DirectShareAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/DirectShareAction;->TAG:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/DirectShareAction;->context:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/samsung/android/settings/bixby/target/DirectShareAction;->taskId:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public doGotoAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .line 27
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/DirectShareAction;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isDualFolderType(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "not_supported"

    goto :goto_0

    .line 30
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const v0, 0x10008000

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 32
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/DirectShareAction;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings.Settings$UsefulFeatureMainActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, ":settings:fragment_args_key"

    const-string v2, "direct_share"

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ":settings:show_fragment_args"

    .line 36
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 38
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/DirectShareAction;->taskId:Ljava/lang/Integer;

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->setTaskIdToIntent(Landroid/content/Intent;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 41
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/DirectShareAction;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "success"

    goto :goto_0

    :cond_1
    const-string p1, "fail"

    .line 46
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
