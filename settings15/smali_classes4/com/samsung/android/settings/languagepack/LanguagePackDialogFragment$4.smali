.class public final Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$4;->this$0:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "extra_lang_code"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->$r8$clinit:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onReceive() ignored. action : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", langCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LanguagePackDialogFragment"

    invoke-static {v3, v2}, Lcom/samsung/android/settings/languagepack/logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$4;->this$0:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;

    iget-boolean v4, v2, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mIsDownloadClicked:Z

    if-nez v4, :cond_0

    const-string/jumbo p0, "onReceive() Download btn not clicked"

    invoke-static {v3, p0}, Lcom/samsung/android/settings/languagepack/logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, v2, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mLanguageInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$$ExternalSyntheticLambda1;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo p1, "onReceive() ignored"

    invoke-static {v3, p1}, Lcom/samsung/android/settings/languagepack/logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$4;->this$0:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;

    iget-object p2, p1, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mProgressBarContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p1, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mIndeterminateBar:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$4;->this$0:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->-$$Nest$mshowWaitingUI(Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;)V

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$4;->this$0:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;

    iget-object v3, v2, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mProgressBarContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_5

    iget-object v2, v2, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mIndeterminateBar:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$4;->this$0:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->-$$Nest$mshowDownloadingUI(Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;)V

    :cond_5
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "com.samsung.android.settings.action.LANGUAGE_PACK_UPDATE_RESULT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v1, "com.samsung.android.settings.action.LANGUAGE_PACK_UPDATE_PROGRESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    const-string v0, "extra_lang_progress"

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v0, "extra_total_size"

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v5, 0x4130000000000000L    # 1048576.0

    div-double v7, v0, v5

    double-to-float p2, v7

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v2, "%.1f"

    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    long-to-double v3, v3

    div-double v5, v3, v5

    double-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    div-double/2addr v3, v0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$4;->this$0:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SeslProgressBar;->setProgress(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$4;->this$0:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mProgressLeftText:Landroid/widget/TextView;

    const v3, 0x7f14260d

    filled-new-array {v2, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$4;->this$0:Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment;->mProgressRightText:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v0, 0x7f14260c

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$4$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v1}, Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$4$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/languagepack/LanguagePackDialogFragment$4;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method
