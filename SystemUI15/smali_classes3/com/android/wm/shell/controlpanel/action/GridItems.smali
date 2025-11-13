.class public final Lcom/android/wm/shell/controlpanel/action/GridItems;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ACTIVITY_BASIC:Ljava/util/ArrayList;

.field public static final ACTIVITY_EDIT_BASIC:Ljava/util/ArrayList;

.field public static final ALL_ACTIONS:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->SplitScreen:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    sget-object v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->QuickPanel:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    sget-object v3, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->ScreenCapture:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    sget-object v4, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->TouchPad:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    sget-object v5, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->EditPanel:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    filled-new-array {v1, v2, v3, v4, v5}, [Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/wm/shell/controlpanel/action/GridItems;->ACTIVITY_BASIC:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    sget-object v6, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->QuickSettings:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    sget-object v7, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->BrightnessControl:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    sget-object v8, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->VolumeControl:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    sget-object v9, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->FlexPanelSettings:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    filled-new-array {v6, v7, v8, v9}, [Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/wm/shell/controlpanel/action/GridItems;->ACTIVITY_EDIT_BASIC:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    filled-new-array/range {v1 .. v9}, [Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/wm/shell/controlpanel/action/GridItems;->ALL_ACTIONS:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
