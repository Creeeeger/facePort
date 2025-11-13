.class public final Lcom/android/systemui/subscreen/SubScreenQSEventHandler$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$3;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationModeChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$3;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->-$$Nest$fputmIsGestureMode(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;Z)V

    return-void
.end method
