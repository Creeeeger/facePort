.class public final synthetic Lcom/android/wm/shell/windowdecor/DexCompatRestartActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/windowdecor/DexCompatRestartActivity;

.field public final synthetic f$1:Landroid/widget/CheckBox;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/DexCompatRestartActivity;Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DexCompatRestartActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/DexCompatRestartActivity;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/DexCompatRestartActivity$$ExternalSyntheticLambda0;->f$1:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DexCompatRestartActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/DexCompatRestartActivity;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DexCompatRestartActivity$$ExternalSyntheticLambda0;->f$1:Landroid/widget/CheckBox;

    sget v0, Lcom/android/wm/shell/windowdecor/DexCompatRestartActivity;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "disable_dexcompat_restart_dialog"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget p0, p1, Lcom/android/wm/shell/windowdecor/DexCompatRestartActivity;->mTargetTaskId:I

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->toggleFreeformForDexCompatApp(I)V

    return-void
.end method
