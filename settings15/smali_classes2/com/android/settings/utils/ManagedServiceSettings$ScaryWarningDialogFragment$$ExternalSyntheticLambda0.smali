.class public final synthetic Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/utils/ManagedServiceSettings;

.field public final synthetic f$1:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/utils/ManagedServiceSettings;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/utils/ManagedServiceSettings;

    iput-object p2, p0, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/utils/ManagedServiceSettings;

    iget-object p0, p0, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    iget-object p1, p1, Lcom/android/settings/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settingslib/applications/ServiceListing;

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/android/settingslib/applications/ServiceListing;->setEnabled(Landroid/content/ComponentName;Z)V

    return-void
.end method
