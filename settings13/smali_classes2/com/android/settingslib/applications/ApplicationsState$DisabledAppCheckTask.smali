.class Lcom/android/settingslib/applications/ApplicationsState$DisabledAppCheckTask;
.super Landroid/os/AsyncTask;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisabledAppCheckTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final mRestrictInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStartTime:J

.field final synthetic this$0:Lcom/android/settingslib/applications/ApplicationsState;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;)V
    .locals 0

    .line 2873
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$DisabledAppCheckTask;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2875
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$DisabledAppCheckTask;->mRestrictInfoMap:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settingslib/applications/ApplicationsState$DisabledAppCheckTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState$DisabledAppCheckTask;-><init>(Lcom/android/settingslib/applications/ApplicationsState;)V

    return-void
.end method

.method private isDisabledByAppRestriction(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1

    .line 2878
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$DisabledAppCheckTask;->mRestrictInfoMap:Ljava/util/HashMap;

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2881
    :cond_0
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2882
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5

    const-string p1, "ApplicationsState"

    const-string v0, "DisabledAppCheckTask START"

    .line 2891
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2892
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settingslib/applications/ApplicationsState$DisabledAppCheckTask;->mStartTime:J

    .line 2894
    new-instance p1, Lcom/samsung/android/sdhms/SemAppRestrictionManager;

    invoke-direct {p1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager;-><init>()V

    const/4 v0, 0x0

    .line 2896
    invoke-virtual {p1, v0}, Lcom/samsung/android/sdhms/SemAppRestrictionManager;->getRestrictedList(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2898
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    .line 2899
    invoke-virtual {v1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getRestrictionInfo()Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2900
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$DisabledAppCheckTask;->mRestrictInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2901
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$DisabledAppCheckTask;->mRestrictInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2903
    :cond_1
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$DisabledAppCheckTask;->mRestrictInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2911
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$DisabledAppCheckTask;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_4

    .line 2912
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$DisabledAppCheckTask;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .line 2913
    invoke-direct {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState$DisabledAppCheckTask;->isDisabledByAppRestriction(Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2914
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$DisabledAppCheckTask;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 2915
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2918
    :cond_4
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2873
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState$DisabledAppCheckTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    .line 2923
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$DisabledAppCheckTask;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2924
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$Session;

    if-eqz v1, :cond_0

    .line 2926
    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    invoke-interface {v1, p1}, Lcom/android/settingslib/applications/ApplicationsState$Callbacks;->onDisabledAppCheckCompleted(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 2929
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisabledAppCheckTask END result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " took "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide p0, p0, Lcom/android/settingslib/applications/ApplicationsState$DisabledAppCheckTask;->mStartTime:J

    sub-long/2addr v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApplicationsState"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 2873
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState$DisabledAppCheckTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
