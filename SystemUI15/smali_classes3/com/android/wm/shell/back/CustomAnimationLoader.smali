.class public final Lcom/android/wm/shell/back/CustomAnimationLoader;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final transitionAnimation:Lcom/android/internal/policy/TransitionAnimation;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/TransitionAnimation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/back/CustomAnimationLoader;->transitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    return-void
.end method


# virtual methods
.method public final loadAnimation(Landroid/window/BackNavigationInfo$CustomAnimationInfo;Z)Landroid/view/animation/Animation;
    .locals 5

    const/4 v0, 0x6

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->getCustomEnterAnim()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-nez p2, :cond_3

    invoke-virtual {p1}, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->getCustomExitAnim()I

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/android/wm/shell/back/CustomAnimationLoader;->transitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {p1}, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->getCustomEnterAnim()I

    move-result p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->getCustomExitAnim()I

    move-result p1

    :goto_0
    invoke-virtual {v2, v3, p1}, Lcom/android/internal/policy/TransitionAnimation;->loadAppTransitionAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->getWindowAnimations()I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/wm/shell/back/CustomAnimationLoader;->transitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {p1}, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->getWindowAnimations()I

    move-result p1

    if-eqz p2, :cond_4

    move v4, v0

    goto :goto_1

    :cond_4
    const/4 v4, 0x7

    :goto_1
    invoke-virtual {v2, v3, p1, v4, v1}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationAttr(Ljava/lang/String;IIZ)Landroid/view/animation/Animation;

    move-result-object p1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    if-nez p1, :cond_6

    if-eqz p2, :cond_6

    iget-object p0, p0, Lcom/android/wm/shell/back/CustomAnimationLoader;->transitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationAttr(IZ)Landroid/view/animation/Animation;

    move-result-object p1

    :cond_6
    if-eqz p1, :cond_7

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string p2, "custom animation loaded %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/android/internal/protolog/common/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string p2, "No custom animation loaded"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p2, v0}, Lcom/android/internal/protolog/common/ProtoLog;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    return-object p1
.end method
