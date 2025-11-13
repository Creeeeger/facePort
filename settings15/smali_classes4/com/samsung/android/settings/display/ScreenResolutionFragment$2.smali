.class public final Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/ScreenResolutionFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    iget-object v0, p1, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenResolutionButton:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->getCurrentValue$1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenResolution(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenChangeState:Z

    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    iget-boolean p1, p1, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenChangeState:Z

    if-eqz p1, :cond_5

    const/16 p1, 0x1d10

    const/16 v0, 0x1d1a

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenResolutionButton:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->getCurrentValue$1()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    const/16 v1, 0x3e7

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getIntRefreshRate(Landroid/content/Context;I)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "selected = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ScreenResolutionFragment"

    invoke-static {v4, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "refreshRateMode = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    iget-object v4, v4, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplayUtils;->canSetHighRefreshRateAboveWQHD(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_4

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    iget-object v4, v4, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, ""

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    iget-object v7, v6, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getHighRefreshRateSeamlessType(I)I

    move-result v1

    if-eq v1, v2, :cond_3

    if-eq v1, v3, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, v6, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f142474

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    iget-object v1, v6, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f142479

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2$2;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2$2;-><init>(Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;I)V

    const p0, 0x104000a

    invoke-virtual {v1, p0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2$1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mController:Lcom/samsung/android/settings/display/controller/SecScreenResolutionSingleChoiceController;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/display/controller/SecScreenResolutionSingleChoiceController;->setSelectedValue(Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;->this$0:Lcom/samsung/android/settings/display/ScreenResolutionFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_5
    :goto_2
    return-void
.end method
