.class public final Lcom/android/wm/shell/freeform/FreeformComponents;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mTaskListener:Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Ljava/util/Optional;Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/transition/Transitions$TransitionHandler;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/transition/Transitions$TransitionObserver;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformComponents;->mTaskListener:Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    return-void
.end method

.method public static isFreeformEnabled(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.freeform_window_management"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enable_freeform_support"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method
