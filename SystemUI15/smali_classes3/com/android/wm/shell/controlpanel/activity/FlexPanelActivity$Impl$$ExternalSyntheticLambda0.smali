.class public final synthetic Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x1

    const-string v1, "c"

    const-string v2, "F004"

    iget v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;

    packed-switch v3, :pswitch_data_0

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    sget v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditPanelItemSize:I

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->checkActiveSession()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    sget v3, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditPanelItemSize:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE_SA_LOGGING:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v1, v3}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->eventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCloseState:Z

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->removeTouchPad(Z)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    sget v3, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditPanelItemSize:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE_SA_LOGGING:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v1, v3}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->eventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCloseState:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
