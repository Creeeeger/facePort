.class public final Lcom/android/wm/shell/transition/DefaultTransitionHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/transition/DefaultTransitionHandler;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$1;->this$0:Lcom/android/wm/shell/transition/DefaultTransitionHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "android.app.extra.RESOURCE_TYPE"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$1;->this$0:Lcom/android/wm/shell/transition/DefaultTransitionHandler;

    iget-object p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance p2, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler;)V

    const-string v0, "OUTLINE"

    const-string v1, "PROFILE_SWITCH_ANIMATION"

    const-string v2, "WORK_PROFILE_ICON"

    invoke-virtual {p1, v2, v0, v1, p2}, Landroid/app/admin/DevicePolicyResourcesManager;->getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mEnterpriseThumbnailDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method
