.class public final synthetic Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/assist/AssistManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/assist/AssistManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/assist/AssistManager;

    return-void
.end method


# virtual methods
.method public final onNavigationModeChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/assist/AssistManager;

    iput p1, p0, Lcom/android/systemui/assist/AssistManager;->navBarMode:I

    return-void
.end method
