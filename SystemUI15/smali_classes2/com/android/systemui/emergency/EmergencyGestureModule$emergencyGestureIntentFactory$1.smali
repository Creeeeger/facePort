.class public final Lcom/android/systemui/emergency/EmergencyGestureModule$emergencyGestureIntentFactory$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/emergency/EmergencyGestureModule$EmergencyGestureIntentFactory;


# instance fields
.field public final synthetic $packageManager:Landroid/content/pm/PackageManager;

.field public final synthetic $resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/res/Resources;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/emergency/EmergencyGestureModule$emergencyGestureIntentFactory$1;->$packageManager:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Lcom/android/systemui/emergency/EmergencyGestureModule$emergencyGestureIntentFactory$1;->$resources:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/content/Intent;
    .locals 7

    sget-object v0, Lcom/android/systemui/emergency/EmergencyGestureModule;->INSTANCE:Lcom/android/systemui/emergency/EmergencyGestureModule;

    iget-object v1, p0, Lcom/android/systemui/emergency/EmergencyGestureModule$emergencyGestureIntentFactory$1;->$packageManager:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/android/systemui/emergency/EmergencyGestureModule$emergencyGestureIntentFactory$1;->$resources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.systemui.action.LAUNCH_EMERGENCY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x100000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object p0, v3

    goto :goto_0

    :cond_0
    const v2, 0x7f1303f5

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v6, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object p0, v5

    goto :goto_0

    :cond_3
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    :goto_0
    if-nez p0, :cond_4

    sget-object p0, Lcom/android/systemui/emergency/EmergencyGestureModule;->TAG:Ljava/lang/String;

    const-string v0, "Couldn\'t find an app to process the emergency intent."

    invoke-static {p0, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    goto :goto_1

    :cond_4
    new-instance v1, Landroid/content/ComponentName;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_1
    return-object v0
.end method
