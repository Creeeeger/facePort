.class public final synthetic Lcom/android/wm/shell/ShellTaskOrganizer$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/ShellTaskOrganizer$1;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/ShellTaskOrganizer$1;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer$1$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizer$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/ShellTaskOrganizer$1;

    iput-object p2, p0, Lcom/android/wm/shell/ShellTaskOrganizer$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/ShellTaskOrganizer$1;Ljava/lang/String;II)V
    .locals 0

    const/4 p3, 0x0

    iput p3, p0, Lcom/android/wm/shell/ShellTaskOrganizer$1$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizer$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/ShellTaskOrganizer$1;

    iput-object p2, p0, Lcom/android/wm/shell/ShellTaskOrganizer$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer$1$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/ShellTaskOrganizer$1;

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/wm/shell/ShellTaskOrganizer$1;->this$0:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v0, v0, Lcom/android/wm/shell/ShellTaskOrganizer;->mForcedResizableController:Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mLastShowingTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x1388

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_0
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mContext:Landroid/content/Context;

    const v4, 0x7f130ccf

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v3, v4, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget-object p0, v0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mContext:Landroid/content/Context;

    const v3, 0x7f130cce

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, p0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    iput-wide v1, v0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mLastShowingTime:J

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz p0, :cond_3

    const-string p0, "1005"

    const-string v0, "Switch to MW-incompatible app"

    invoke-static {p0, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/ShellTaskOrganizer$1;

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/wm/shell/ShellTaskOrganizer$1;->this$0:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v0, v0, Lcom/android/wm/shell/ShellTaskOrganizer;->mForcedResizableController:Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    const-string v1, "com.android.systemui"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mPackagesShownInSession:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mPackagesShownInSession:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
