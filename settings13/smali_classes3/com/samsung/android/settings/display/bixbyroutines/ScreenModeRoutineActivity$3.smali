.class Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity$3;
.super Ljava/lang/Object;
.source "ScreenModeRoutineActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;->showScreenModeDialog(Ljava/lang/String;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity$3;->this$0:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 104
    iget-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity$3;->this$0:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 105
    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity$3;->this$0:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
