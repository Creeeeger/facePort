.class Lcom/samsung/android/multicontrol/SemMultiControlManager$1;
.super Ljava/lang/Object;
.source "SemMultiControlManager.java"

# interfaces
.implements Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/multicontrol/SemMultiControlManager;->startDeathChecker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/multicontrol/SemMultiControlManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/multicontrol/SemMultiControlManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/multicontrol/SemMultiControlManager;

    .line 123
    iput-object p1, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager$1;->this$0:Lcom/samsung/android/multicontrol/SemMultiControlManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
