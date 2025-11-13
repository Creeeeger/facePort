.class public final synthetic Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;

.field public final synthetic f$1:Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$PendingAction;

.field public final synthetic f$2:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$PendingAction;Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;

    iput-object p2, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$$ExternalSyntheticLambda4;->f$1:Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$PendingAction;

    iput-object p3, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$$ExternalSyntheticLambda4;->f$2:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;

    iget-object v1, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$$ExternalSyntheticLambda4;->f$1:Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$PendingAction;

    iget-object p0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$$ExternalSyntheticLambda4;->f$2:Lcom/google/common/util/concurrent/ListenableFuture;

    sget v2, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->$r8$clinit:I

    const-string v2, "Screenshot"

    iget-object v3, v0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mSave:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object v3, v0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mEdit:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object v3, v0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mShare:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/screenshot/ImageExporter$Result;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageExporter$Result;->uri:Landroid/net/Uri;

    invoke-static {p0}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " uri="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_1

    const/4 p0, 0x2

    if-eq v1, p0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    goto/16 :goto_0

    :cond_1
    iget-object v1, v0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mScreenshotUserHandle:Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    if-eq v1, v3, :cond_2

    sget-object v1, Lcom/android/systemui/screenshot/ActionIntentCreator;->INSTANCE:Lcom/android/systemui/screenshot/ActionIntentCreator;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/android/systemui/screenshot/ActionIntentCreator;->createEdit(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mScreenshotUserHandle:Landroid/os/UserHandle;

    iget-object v2, v0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mActionExecutor:Lcom/android/systemui/screenshot/ActionIntentExecutor;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/screenshot/ActionIntentExecutor;->launchIntentAsync(Landroid/content/Intent;Landroid/os/UserHandle;ZLandroid/app/ActivityOptions;Landroid/app/ExitTransitionCoordinator;)V

    goto :goto_0

    :cond_2
    const v1, 0x7f130400

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.EDIT"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "image/png"

    invoke-virtual {v3, p0, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p0, 0x3

    invoke-virtual {v3, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object p0, v0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mTransitionView:Landroid/widget/ImageView;

    iget-object v1, v0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mOutputBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p0, v0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mTransitionView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, v0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mTransitionView:Landroid/widget/ImageView;

    const-string/jumbo v1, "screenshot_preview_image"

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    iget-object p0, v0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mTransitionView:Landroid/widget/ImageView;

    invoke-static {v0, p0, v1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    iput-boolean v4, v0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mTransitionStarted:Z

    :cond_3
    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/android/systemui/screenshot/ActionIntentCreator;->INSTANCE:Lcom/android/systemui/screenshot/ActionIntentCreator;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v2, v2}, Lcom/android/systemui/screenshot/ActionIntentCreator;->createShare(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mScreenshotUserHandle:Landroid/os/UserHandle;

    iget-object v3, v0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->mActionExecutor:Lcom/android/systemui/screenshot/ActionIntentExecutor;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/screenshot/ActionIntentExecutor;->launchIntentAsync(Landroid/content/Intent;Landroid/os/UserHandle;ZLandroid/app/ActivityOptions;Landroid/app/ExitTransitionCoordinator;)V

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "failed to export"

    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
