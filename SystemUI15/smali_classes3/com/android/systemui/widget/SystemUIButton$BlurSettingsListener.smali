.class public final Lcom/android/systemui/widget/SystemUIButton$BlurSettingsListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/widget/SystemUIButton;


# direct methods
.method public constructor <init>(Lcom/android/systemui/widget/SystemUIButton;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIButton$BlurSettingsListener;->this$0:Lcom/android/systemui/widget/SystemUIButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "accessibility_reduce_transparency"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onChanged "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SystemUIButton"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIButton$BlurSettingsListener;->this$0:Lcom/android/systemui/widget/SystemUIButton;

    iget-object p1, p1, Lcom/android/systemui/widget/SystemUIButton;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/widget/SystemUIButton$BlurSettingsListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/widget/SystemUIButton$BlurSettingsListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/widget/SystemUIButton$BlurSettingsListener;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
