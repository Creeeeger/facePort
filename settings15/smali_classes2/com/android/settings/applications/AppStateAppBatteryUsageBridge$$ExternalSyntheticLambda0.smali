.class public final synthetic Lcom/android/settings/applications/AppStateAppBatteryUsageBridge$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/applications/AppStateAppBatteryUsageBridge;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/AppStateAppBatteryUsageBridge;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/AppStateAppBatteryUsageBridge;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/AppStateAppBatteryUsageBridge;

    check-cast p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge;->updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V

    return-void
.end method
