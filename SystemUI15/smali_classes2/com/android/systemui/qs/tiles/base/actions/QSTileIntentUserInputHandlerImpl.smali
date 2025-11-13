.class public final Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandlerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final packageManager:Landroid/content/pm/PackageManager;

.field public final userHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/ActivityStarter;Landroid/content/pm/PackageManager;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandlerImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandlerImpl;->packageManager:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandlerImpl;->userHandle:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final handle(Lcom/android/systemui/animation/Expandable;Landroid/app/PendingIntent;Z)V
    .locals 4

    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 p3, 0x20

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/android/systemui/animation/Expandable;->activityTransitionController(Ljava/lang/Integer;)Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    move-result-object v1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandlerImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, p2, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_4

    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const/high16 p3, 0x10200000

    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandlerImpl;->packageManager:Landroid/content/pm/PackageManager;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandlerImpl;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {p3, p2, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v2, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_0
    check-cast v0, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_4

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p3}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;->handle$default(Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;Lcom/android/systemui/animation/Expandable;Landroid/content/Intent;)V

    :cond_4
    :goto_1
    return-void
.end method
