.class Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$2;
.super Ljava/lang/Object;
.source "EyeComfortRoutineActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->showEyeComfortRoutineDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$2;->this$0:Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 89
    invoke-static {p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setEyeComfortDialogShowing(Z)V

    .line 90
    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$2;->this$0:Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
