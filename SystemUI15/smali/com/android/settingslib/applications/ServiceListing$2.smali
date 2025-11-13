.class public final Lcom/android/settingslib/applications/ServiceListing$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/applications/ServiceListing;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/applications/ServiceListing;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/applications/ServiceListing$2;->this$0:Lcom/android/settingslib/applications/ServiceListing;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/applications/ServiceListing$2;->this$0:Lcom/android/settingslib/applications/ServiceListing;

    invoke-virtual {p0}, Lcom/android/settingslib/applications/ServiceListing;->reload()V

    return-void
.end method
