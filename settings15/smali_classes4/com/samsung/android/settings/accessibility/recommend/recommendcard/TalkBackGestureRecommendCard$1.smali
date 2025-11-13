.class public final Lcom/samsung/android/settings/accessibility/recommend/recommendcard/TalkBackGestureRecommendCard$1;
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

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/TalkBackGestureRecommendCard$1;->val$context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getButtonContentDescription(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    const p0, 0x7f142e49

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

    const-string p0, "TalkBackSettings"

    return-object p0
.end method

.method public final onButtonClicked()V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/TalkBackGestureRecommendCard$1;->val$context:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_SAMSUNG_TALKBACK_SETTING_ACTIVITY:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
