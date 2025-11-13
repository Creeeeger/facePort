.class public final Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;


# direct methods
.method public constructor <init>(Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader$1;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;

    return-void
.end method


# virtual methods
.method public final onPrintersChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader$1;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;

    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader$1;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;

    iget-object p0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->getPrinters()Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-boolean p0, v0, Landroidx/loader/content/Loader;->mStarted:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0, v1}, Landroidx/loader/content/Loader;->deliverResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
