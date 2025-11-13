.class public final Lcom/samsung/android/settings/accessibility/recommend/recommendcard/SmartThingsRecommendCard$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem$ActionButtonInfo;


# instance fields
.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/SmartThingsRecommendCard$1;->val$context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getButtonLoggingValue()Ljava/lang/String;
    .locals 0

    const-string p0, "SmartThings"

    return-object p0
.end method

.method public final getButtonText(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    sget-boolean p0, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/SmartThingsRecommendCard;->IS_GLOBAL_NAMING:Z

    if-eqz p0, :cond_0

    const p0, 0x7f141e3e

    goto :goto_0

    :cond_0
    const p0, 0x7f141e3f

    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v0, 0x7f141e29

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final onButtonClicked()V
    .locals 3

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/SmartThingsRecommendCard$1;->val$context:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.oneconnect"

    const-string v2, ".ui.SCMainActivity"

    invoke-static {v1, v2}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SmartThingsRecommendCard"

    const-string v1, "Activity not found"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
