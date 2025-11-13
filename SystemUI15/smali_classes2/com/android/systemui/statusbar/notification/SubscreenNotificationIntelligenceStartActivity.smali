.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;
.super Landroid/app/Activity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final controller:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

.field public mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v0, "SubscreenNotificationIntelligenceStartActivity"

    sput-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->controller:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    sget-object p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->TAG:Ljava/lang/String;

    const-string p1, "SubscreenNotificationIntelligenceStartActivity()"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final access$setSuggestionResponsesEnabled(Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper;->setSuggestResponsesEnabled(Z)V

    return-void
.end method

.method public static final access$setSuggestionResponsesUsed(Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper;->setSuggestResponsesUsed(Z)V

    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string p3, "onActivityResult() request: "

    const-string v0, ", result: "

    invoke-static {p1, p2, p3, v0}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p3, 0xa

    const/4 v1, -0x1

    const/16 v2, 0x14

    if-eq p1, p3, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-ne p2, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->setAiInfoConfirmed()V

    sget-boolean p1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isSuggestResponsesEnabled()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isSuggestResponsesUsed()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->showDisclaimerDialog()V

    return-void

    :cond_1
    if-ne p2, v1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->controller:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isSamsungAccountLoggedIn()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->setAiInfoConfirmed()V

    sget-boolean p1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isSuggestResponsesEnabled()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isSuggestResponsesUsed()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->showDisclaimerDialog()V

    return-void

    :cond_2
    const-string/jumbo p1, "startSamsungAccountSignInPopup()"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.msc.action.samsungaccount.SIGNIN_POPUP"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x24000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p2, "client_id"

    const-string p3, "i5to7wq0er"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0d04a1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA:Z

    const/16 v1, 0xa

    const-string v2, "com.samsung.android.settings.action.INTELLIGENCE_SERVICE_SETTINGS"

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v4, "pid"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-ne v4, v5, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz p1, :cond_1

    const-string v4, "is_dialog_showing"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v3

    :goto_0
    if-nez v0, :cond_2

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->showDisclaimerDialog()V

    goto :goto_1

    :cond_3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    sget-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_1
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_2
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;->alertDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;

    :cond_3
    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA:Z

    if-eqz v0, :cond_1

    const-string v0, "pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;->alertDialog:Landroid/app/AlertDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "is_dialog_showing"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public final onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public final setAiInfoConfirmed()V
    .locals 2

    const-string/jumbo v0, "set ai_info_confirmed to 1"

    sget-object v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper;->setAiInfoConfirmed(Z)V

    return-void
.end method

.method public final showDisclaimerDialog()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_1
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_2
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;->alertDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;

    :cond_3
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity$showDisclaimerDialog$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity$showDisclaimerDialog$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;)V

    new-instance v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity$showDisclaimerDialog$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity$showDisclaimerDialog$2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;)V

    new-instance v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity$showDisclaimerDialog$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity$showDisclaimerDialog$3;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;

    :try_start_0
    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;->alertDialog:Landroid/app/AlertDialog;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "SubscreenNotificationSmartReplyDisclaimerDialog"

    const-string v0, "BadTokenException occurs. The dialog show will be ignored."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method
