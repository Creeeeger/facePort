.class public final synthetic Lcom/android/settings/panel/PanelFragment$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/panel/PanelFragment;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/panel/PanelFragment;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/panel/PanelFragment$$ExternalSyntheticLambda6;->f$0:Lcom/android/settings/panel/PanelFragment;

    iput-object p2, p0, Lcom/android/settings/panel/PanelFragment$$ExternalSyntheticLambda6;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment$$ExternalSyntheticLambda6;->f$0:Lcom/android/settings/panel/PanelFragment;

    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment$$ExternalSyntheticLambda6;->f$1:Landroid/net/Uri;

    iget-object v1, v0, Lcom/android/settings/panel/PanelFragment;->mPanelSlicesLoaderCountdownLatch:Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;

    invoke-virtual {v1, p0}, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->markSliceLoaded(Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/android/settings/panel/PanelFragment;->loadPanelWhenReady()V

    return-void
.end method
