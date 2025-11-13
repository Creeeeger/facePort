.class public final Lcom/android/systemui/wallpaper/accessory/SmartCardController$smartCardServiceStart$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $this_run:Landroid/content/Intent;

.field public final synthetic this$0:Lcom/android/systemui/wallpaper/accessory/SmartCardController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/accessory/SmartCardController;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController$smartCardServiceStart$2$1;->this$0:Lcom/android/systemui/wallpaper/accessory/SmartCardController;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController$smartCardServiceStart$2$1;->$this_run:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController$smartCardServiceStart$2$1;->this$0:Lcom/android/systemui/wallpaper/accessory/SmartCardController;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController$smartCardServiceStart$2$1;->$this_run:Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method
