.class public final Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$2;->this$0:Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    sget-object p1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sInstance:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity$2;->this$0:Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;->finish()V

    return-void
.end method
