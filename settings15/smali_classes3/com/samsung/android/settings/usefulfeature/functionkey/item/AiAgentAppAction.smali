.class public abstract Lcom/samsung/android/settings/usefulfeature/functionkey/item/AiAgentAppAction;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final create(Landroid/content/Context;)Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;
    .locals 13

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v0, "aiAgentApp/aiAgentApp"

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->makeSideKeyCustomizationInfoIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    const-string v0, "makeSideKeyCustomizationInfoIntent(...)"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/settings/Rune;->FEATURE_SIDE_BUTTON_SUPPORT_AI_AGENT_APP:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :goto_1
    const v0, 0x7f14255a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string p0, "getString(...)"

    invoke-static {v6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;

    const-string v10, "aiAgentApp/aiAgentApp"

    const/4 v11, 0x3

    const-string v2, "long_press_ai_agent_app"

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const v8, 0x186a0

    const/4 v9, 0x2

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyAction;-><init>(Ljava/lang/String;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/content/Intent;)V

    return-object p0
.end method
