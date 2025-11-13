.class public final synthetic Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment;

    sget-object v0, Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment;->sProcessTextManageAppsStr:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "process_text_manager_apps"

    sget-object v1, Lcom/samsung/android/settings/display/SecProcessTextManageAppsFragment;->sProcessTextManageAppsStr:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
