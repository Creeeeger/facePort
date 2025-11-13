.class public final synthetic Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService;

    iput-object p2, p0, Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService;

    iget-object v1, p0, Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    check-cast p1, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery$Result;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService;->$r8$lambda$ypP8PrrR6wNdljeLbFtDQRFvpLM(Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService;Landroid/content/Intent;Landroid/content/Context;Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery$Result;)V

    return-void
.end method
