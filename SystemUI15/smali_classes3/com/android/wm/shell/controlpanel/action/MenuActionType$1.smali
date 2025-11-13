.class public abstract synthetic Lcom/android/wm/shell/controlpanel/action/MenuActionType$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $SwitchMap$com$android$wm$shell$controlpanel$action$ControlPanelAction$Action:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->values()[Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/wm/shell/controlpanel/action/MenuActionType$1;->$SwitchMap$com$android$wm$shell$controlpanel$action$ControlPanelAction$Action:[I

    :try_start_0
    sget-object v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->ScreenCapture:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/wm/shell/controlpanel/action/MenuActionType$1;->$SwitchMap$com$android$wm$shell$controlpanel$action$ControlPanelAction$Action:[I

    sget-object v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->QuickPanel:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/android/wm/shell/controlpanel/action/MenuActionType$1;->$SwitchMap$com$android$wm$shell$controlpanel$action$ControlPanelAction$Action:[I

    sget-object v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->SplitScreen:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/android/wm/shell/controlpanel/action/MenuActionType$1;->$SwitchMap$com$android$wm$shell$controlpanel$action$ControlPanelAction$Action:[I

    sget-object v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->FlexPanelSettings:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/android/wm/shell/controlpanel/action/MenuActionType$1;->$SwitchMap$com$android$wm$shell$controlpanel$action$ControlPanelAction$Action:[I

    sget-object v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->TouchPad:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/android/wm/shell/controlpanel/action/MenuActionType$1;->$SwitchMap$com$android$wm$shell$controlpanel$action$ControlPanelAction$Action:[I

    sget-object v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->QuickSettings:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
