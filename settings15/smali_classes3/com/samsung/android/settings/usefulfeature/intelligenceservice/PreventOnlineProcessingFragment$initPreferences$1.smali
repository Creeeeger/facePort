.class public final Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingFragment$initPreferences$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingFragment$initPreferences$1;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingFragment$initPreferences$1;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingFragment;->mISAManager:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceAppsManager;->getAppList(Ljava/lang/String;)[Ljava/util/TreeSet;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingFragment$initPreferences$1;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingFragment$initPreferences$1$1;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingFragment$initPreferences$1;->this$0:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingFragment;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingFragment$initPreferences$1$1;-><init>(Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingFragment;[Ljava/util/TreeSet;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    const-string p0, "mISAManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method
