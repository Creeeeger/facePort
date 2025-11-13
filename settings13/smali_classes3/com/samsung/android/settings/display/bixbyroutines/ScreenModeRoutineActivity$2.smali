.class Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity$2;
.super Ljava/lang/Object;
.source "ScreenModeRoutineActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 108
    iput-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity$2;->this$0:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 111
    iget-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity$2;->this$0:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 112
    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity$2;->this$0:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
