.class final Lcom/android/systemui/accessibility/data/repository/AccessibilityRepositoryImpl$isEnabled$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $listener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

.field final synthetic $manager:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method public constructor <init>(Landroid/view/accessibility/AccessibilityManager;Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/data/repository/AccessibilityRepositoryImpl$isEnabled$1$1;->$manager:Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, Lcom/android/systemui/accessibility/data/repository/AccessibilityRepositoryImpl$isEnabled$1$1;->$listener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/accessibility/data/repository/AccessibilityRepositoryImpl$isEnabled$1$1;->$manager:Landroid/view/accessibility/AccessibilityManager;

    iget-object p0, p0, Lcom/android/systemui/accessibility/data/repository/AccessibilityRepositoryImpl$isEnabled$1$1;->$listener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
