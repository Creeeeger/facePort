.class public final Lcom/samsung/android/settings/accessibility/recommend/recommendcard/BixbyTextCallRecommendCard$1;
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

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/BixbyTextCallRecommendCard$1;->val$context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getButtonContentDescription(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/accessibility/AccessibilityRune;->isAtLeastOneUI_6_1()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f141e44

    goto :goto_0

    :cond_0
    const p0, 0x7f141e27

    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v0, 0x7f141e30

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getButtonLoggingValue()Ljava/lang/String;
    .locals 0

    const-string p0, "BixbyTextCall"

    return-object p0
.end method

.method public final onButtonClicked()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.telephonyui.action.OPEN_CALL_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "root_key"

    const-string v2, "SCREEN_CALL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/BixbyTextCallRecommendCard$1;->val$context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "BixbyTextCallRecommendCard"

    const-string v1, "ActivityNotFoundException!"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
