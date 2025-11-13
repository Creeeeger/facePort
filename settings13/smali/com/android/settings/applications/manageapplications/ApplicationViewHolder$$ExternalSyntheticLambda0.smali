.class public final synthetic Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

.field public final synthetic f$1:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    iput-object p2, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-static {v0, p0, p1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->$r8$lambda$0XLfki5w6gBp33eMqhd4VBXj23Q(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/view/View;)V

    return-void
.end method
