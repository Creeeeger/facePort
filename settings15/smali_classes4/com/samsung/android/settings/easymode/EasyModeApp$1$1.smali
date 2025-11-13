.class public final Lcom/samsung/android/settings/easymode/EasyModeApp$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/settings/easymode/EasyModeApp$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/easymode/EasyModeApp$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1$1;->this$1:Lcom/samsung/android/settings/easymode/EasyModeApp$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1$1;->this$1:Lcom/samsung/android/settings/easymode/EasyModeApp$1;

    iget-object v0, v0, Lcom/samsung/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    iget-object v0, v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1$1;->this$1:Lcom/samsung/android/settings/easymode/EasyModeApp$1;

    iget-object v2, v2, Lcom/samsung/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    iget-object v2, v2, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f141121

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f142003

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1$1;->this$1:Lcom/samsung/android/settings/easymode/EasyModeApp$1;

    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method
