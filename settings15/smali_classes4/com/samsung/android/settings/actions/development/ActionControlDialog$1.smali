.class public final Lcom/samsung/android/settings/actions/development/ActionControlDialog$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/actions/development/ActionControlDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/actions/development/ActionControlDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/actions/development/ActionControlDialog$1;->this$0:Lcom/samsung/android/settings/actions/development/ActionControlDialog;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public final onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/command/action/FloatAction;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/command/action/FloatAction;-><init>(F)V

    sget p1, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->$r8$clinit:I

    iget-object p0, p0, Lcom/samsung/android/settings/actions/development/ActionControlDialog$1;->this$0:Lcom/samsung/android/settings/actions/development/ActionControlDialog;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/actions/development/ActionControlDialog;->setAction(Lcom/samsung/android/sdk/command/action/CommandAction;)V

    return-void
.end method
