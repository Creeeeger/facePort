.class Lcom/samsung/android/settings/actions/development/ActionControlDialog$1;
.super Ljava/lang/Object;
.source "ActionControlDialog.java"

# interfaces
.implements Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/actions/development/ActionControlDialog;->bindSeekBarControlView(III)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/actions/development/ActionControlDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/actions/development/ActionControlDialog;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/samsung/android/settings/actions/development/ActionControlDialog$1;->this$0:Lcom/samsung/android/settings/actions/development/ActionControlDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 1

    .line 178
    iget-object p0, p0, Lcom/samsung/android/settings/actions/development/ActionControlDialog$1;->this$0:Lcom/samsung/android/settings/actions/development/ActionControlDialog;

    new-instance v0, Lcom/samsung/android/sdk/command/action/FloatAction;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/command/action/FloatAction;-><init>(F)V

    invoke-static {p0, v0}, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->-$$Nest$msetAction(Lcom/samsung/android/settings/actions/development/ActionControlDialog;Lcom/samsung/android/sdk/command/action/CommandAction;)V

    return-void
.end method
