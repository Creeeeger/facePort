.class public final Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider$taskStackChangeListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider$taskStackChangeListener$1;->this$0:Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider$taskStackChangeListener$1;->this$0:Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider;->_isHomeActivity:Ljava/lang/Boolean;

    return-void
.end method
