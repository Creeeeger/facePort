.class public final synthetic Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout;

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const p1, 0x7f0a0df3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout;->setViewVisibility(IZ)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout;->mWindowManager:Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;

    iget-object p1, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mOnButtonClicked:Ljava/util/function/BiConsumer;

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskInfo:Landroid/app/TaskInfo;

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskListener:Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    invoke-interface {p1, v0, p0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
