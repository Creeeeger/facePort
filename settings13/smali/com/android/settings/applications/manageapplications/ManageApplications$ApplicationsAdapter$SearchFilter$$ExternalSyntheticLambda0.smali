.class public final synthetic Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$SearchFilter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$SearchFilter;->$r8$lambda$6c0IovzUH_X2C4_YfAYgL_Qvmhg(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result p0

    return p0
.end method
