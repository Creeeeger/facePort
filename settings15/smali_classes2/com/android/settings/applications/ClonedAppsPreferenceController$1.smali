.class public final Lcom/android/settings/applications/ClonedAppsPreferenceController$1;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/applications/ClonedAppsPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/ClonedAppsPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/ClonedAppsPreferenceController$1;->this$0:Lcom/android/settings/applications/ClonedAppsPreferenceController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, [Ljava/lang/Void;

    iget-object p1, p0, Lcom/android/settings/applications/ClonedAppsPreferenceController$1;->this$0:Lcom/android/settings/applications/ClonedAppsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/ClonedAppsPreferenceController;->-$$Nest$fgetmContext(Lcom/android/settings/applications/ClonedAppsPreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x107003c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/ClonedAppsPreferenceController$1;->this$0:Lcom/android/settings/applications/ClonedAppsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/ClonedAppsPreferenceController;->-$$Nest$fgetmContext(Lcom/android/settings/applications/ClonedAppsPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/ClonedAppsPreferenceController$1$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/settings/applications/ClonedAppsPreferenceController$1$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/settings/applications/ClonedAppsPreferenceController$1$$ExternalSyntheticLambda1;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/android/settings/applications/ClonedAppsPreferenceController$1$$ExternalSyntheticLambda1;-><init>(ILjava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/android/settings/applications/ClonedAppsPreferenceController$1;->this$0:Lcom/android/settings/applications/ClonedAppsPreferenceController;

    invoke-static {v1}, Lcom/android/settings/applications/ClonedAppsPreferenceController;->-$$Nest$fgetmContext(Lcom/android/settings/applications/ClonedAppsPreferenceController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->getCloneUserId(Landroid/content/Context;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/ClonedAppsPreferenceController$1;->this$0:Lcom/android/settings/applications/ClonedAppsPreferenceController;

    invoke-static {p0}, Lcom/android/settings/applications/ClonedAppsPreferenceController;->-$$Nest$fgetmContext(Lcom/android/settings/applications/ClonedAppsPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/settings/applications/ClonedAppsPreferenceController$1$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/settings/applications/ClonedAppsPreferenceController$1$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/settings/applications/ClonedAppsPreferenceController$1$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/android/settings/applications/ClonedAppsPreferenceController$1$$ExternalSyntheticLambda1;-><init>(ILjava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide p0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sub-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, [Ljava/lang/Integer;

    iget-object p0, p0, Lcom/android/settings/applications/ClonedAppsPreferenceController$1;->this$0:Lcom/android/settings/applications/ClonedAppsPreferenceController;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/android/settings/applications/ClonedAppsPreferenceController;->-$$Nest$mupdateSummary(Lcom/android/settings/applications/ClonedAppsPreferenceController;II)V

    return-void
.end method
