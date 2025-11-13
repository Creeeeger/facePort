.class public final Lcom/android/settings/network/WepNetworkDialogActivity;
.super Lcom/android/settingslib/spa/SpaDialogWindowTypeActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/android/settings/network/WepNetworkDialogActivity;",
        "Lcom/android/settingslib/spa/SpaDialogWindowTypeActivity;",
        "<init>",
        "()V",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final Content(Landroidx/compose/runtime/Composer;I)V
    .locals 9

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x3a441ff6

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p2, 0xe

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p2

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    and-int/lit8 v3, v0, 0xb

    if-ne v3, v1, :cond_3

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_6

    :cond_3
    :goto_2
    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p1, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    const-class v4, Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    const v5, 0x7f143694

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getString(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v7, 0xc3ada55

    invoke-virtual {p1, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v0, v0, 0xe

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v0, v2, :cond_4

    move v0, v8

    goto :goto_3

    :cond_4
    move v0, v7

    :goto_3
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_5

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v0, :cond_6

    :cond_5
    new-instance v2, Lcom/android/settings/network/WepNetworkDialogActivity$Content$1$1;

    invoke-direct {v2, p0}, Lcom/android/settings/network/WepNetworkDialogActivity$Content$1$1;-><init>(Lcom/android/settings/network/WepNetworkDialogActivity;)V

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_6
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v0, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;

    invoke-direct {v0, v5, v2, v1}, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWepSupported()Z

    move-result v2

    if-ne v2, v8, :cond_7

    new-instance v2, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;

    const v5, 0x7f143698

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/android/settings/network/WepNetworkDialogActivity$Content$2;

    invoke-direct {v7, v3, p0}, Lcom/android/settings/network/WepNetworkDialogActivity$Content$2;-><init>(Landroid/content/Context;Lcom/android/settings/network/WepNetworkDialogActivity;)V

    invoke-direct {v2, v5, v7, v1}, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    move-object v1, v2

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_4
    const v2, 0x7f143697

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "ssid"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    goto :goto_5

    :cond_8
    move-object v5, v3

    :goto_5
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/network/WepNetworkDialogActivity$Content$3;

    invoke-direct {v3, v4, p0}, Lcom/android/settings/network/WepNetworkDialogActivity$Content$3;-><init>(Landroid/net/wifi/WifiManager;Lcom/android/settings/network/WepNetworkDialogActivity;)V

    const v4, -0xed4babf

    invoke-static {v4, v3, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v4

    const/16 v7, 0x8

    const/4 v3, 0x0

    const/16 v6, 0x6000

    move-object v5, p1

    invoke-static/range {v0 .. v7}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlterDialogContentKt;->SettingsAlertDialogContent(Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    :goto_6
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_9

    new-instance v0, Lcom/android/settings/network/WepNetworkDialogActivity$Content$4;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/network/WepNetworkDialogActivity$Content$4;-><init>(Lcom/android/settings/network/WepNetworkDialogActivity;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void
.end method
