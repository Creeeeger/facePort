.class public final Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$modeChangedListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$modeChangedListener$1;->this$0:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationModeChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$modeChangedListener$1;->this$0:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    iput p1, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->naviBarGestureMode:I

    return-void
.end method
