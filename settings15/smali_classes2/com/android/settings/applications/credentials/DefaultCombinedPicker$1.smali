.class public final Lcom/android/settings/applications/credentials/DefaultCombinedPicker$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/applications/credentials/DefaultCombinedPicker;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/credentials/DefaultCombinedPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/credentials/DefaultCombinedPicker$1;->this$0:Lcom/android/settings/applications/credentials/DefaultCombinedPicker;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;I)V
    .locals 1

    sget-object p1, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->sMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/settings/applications/credentials/DefaultCombinedPicker$1$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lcom/android/settings/applications/credentials/DefaultCombinedPicker$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/credentials/DefaultCombinedPicker$1;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onPackageModified(Ljava/lang/String;)V
    .locals 2

    sget-object p1, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->sMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/applications/credentials/DefaultCombinedPicker$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/credentials/DefaultCombinedPicker$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/credentials/DefaultCombinedPicker$1;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .locals 1

    sget-object p1, Lcom/android/settings/applications/credentials/DefaultCombinedPicker;->sMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/settings/applications/credentials/DefaultCombinedPicker$1$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/android/settings/applications/credentials/DefaultCombinedPicker$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/credentials/DefaultCombinedPicker$1;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
