.class public final Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/print/PrintManager$PrintJobStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;


# direct methods
.method public constructor <init>(Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader$1;->this$0:Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;

    return-void
.end method


# virtual methods
.method public final onPrintJobStateChanged(Landroid/print/PrintJobId;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader$1;->this$0:Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;

    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->onForceLoad()V

    return-void
.end method
