.class public final Lcom/android/wm/shell/controlpanel/action/ControlPanelAction;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final mActionType:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction;->mActionType:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;

    sget-object v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->None:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v2}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v2

    const v3, 0x7f1305c6

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v3}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;

    sget-object v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->ScreenCapture:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v2}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v2

    const v5, 0x7f080aed

    const v6, 0x7f130357

    const v7, 0x7f1306df

    invoke-direct {v1, v2, v7, v5, v6}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;

    sget-object v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->QuickPanel:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v2}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v2

    const v5, 0x7f080a7d

    const v6, 0x7f130d49

    const v7, 0x7f1306dd

    invoke-direct {v1, v2, v7, v5, v6}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;

    sget-object v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->QuickSettings:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v2}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v2

    const v5, 0x7f080ab0

    const v6, 0x7f130f34

    const v7, 0x7f1306de

    invoke-direct {v1, v2, v7, v5, v6}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;

    sget-object v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->BrightnessControl:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v2}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v2

    const v5, 0x7f080833

    const v6, 0x7f13030a

    const v7, 0x7f1306da

    invoke-direct {v1, v2, v7, v5, v6}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;

    sget-object v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->VolumeControl:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v2}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v2

    const v5, 0x7f080abd

    const v6, 0x7f131459

    const v7, 0x7f1306e5

    invoke-direct {v1, v2, v7, v5, v6}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;

    sget-object v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->SplitScreen:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v2}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v2

    const v5, 0x7f080b19

    const v6, 0x7f1312a0

    const v7, 0x7f1306e1

    invoke-direct {v1, v2, v7, v5, v6}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;

    sget-object v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->FlexPanelSettings:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v2}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v2

    const v5, 0x7f080923

    const v6, 0x7f131208

    const v7, 0x7f1306e0

    invoke-direct {v1, v2, v7, v5, v6}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;

    sget-object v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->EditPanel:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v2}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v2

    const v5, 0x7f0809d2

    const v6, 0x7f1305c2

    const v7, 0x7f1306e2

    invoke-direct {v1, v2, v7, v5, v6}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;

    sget-object v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->DragCircle:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v2}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v2

    invoke-direct {v1, v2, v3, v4, v3}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;

    sget-object v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->TouchPad:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v2}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v2

    const v3, 0x7f080876

    const v4, 0x7f131385

    const v5, 0x7f1306e4

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLoggingID(ILandroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xb

    const v2, 0x7f1305c6

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction;->mActionType:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;

    iget v3, v3, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;->mAct:I

    if-ne p0, v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;

    iget p0, p0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;->mLogging:I

    if-nez p0, :cond_0

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;

    iget p0, p0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;->mLogging:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getResourceIdByActionValue(I)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xb

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction;->mActionType:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;

    iget v3, v3, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;->mAct:I

    if-ne p0, v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;

    iget p0, p0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;->mIcon:I

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static getStringIdByActionValue(I)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xb

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction;->mActionType:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;

    iget v3, v3, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;->mAct:I

    if-ne p0, v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;

    iget p0, p0, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$GridViewItem;->mName:I

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
