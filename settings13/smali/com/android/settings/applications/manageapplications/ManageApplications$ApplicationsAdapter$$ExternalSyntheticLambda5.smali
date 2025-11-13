.class public final synthetic Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;ILcom/android/settings/applications/manageapplications/ApplicationViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticLambda5;->f$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    iput p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticLambda5;->f$1:I

    iput-object p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticLambda5;->f$2:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticLambda5;->f$0:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticLambda5;->f$1:I

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticLambda5;->f$2:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    invoke-static {v0, v1, p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->$r8$lambda$T34Gp3P7kMEBgEVTTawiYgzsp_c(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;ILcom/android/settings/applications/manageapplications/ApplicationViewHolder;)V

    return-void
.end method
