.class public final Lcom/android/systemui/keyguard/ui/view/layout/KeyguardBlueprintCommandListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final commandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

.field public final keyguardBlueprintInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardBlueprintInteractor;

.field public final keyguardBlueprintRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository;

.field public final layoutCommand:Lcom/android/systemui/keyguard/ui/view/layout/KeyguardBlueprintCommandListener$KeyguardLayoutManagerCommand;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/ui/view/layout/KeyguardBlueprintCommandListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/ui/view/layout/KeyguardBlueprintCommandListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository;Lcom/android/systemui/keyguard/domain/interactor/KeyguardBlueprintInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/view/layout/KeyguardBlueprintCommandListener;->commandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/view/layout/KeyguardBlueprintCommandListener;->keyguardBlueprintRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/view/layout/KeyguardBlueprintCommandListener;->keyguardBlueprintInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardBlueprintInteractor;

    new-instance p1, Lcom/android/systemui/keyguard/ui/view/layout/KeyguardBlueprintCommandListener$KeyguardLayoutManagerCommand;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/ui/view/layout/KeyguardBlueprintCommandListener$KeyguardLayoutManagerCommand;-><init>(Lcom/android/systemui/keyguard/ui/view/layout/KeyguardBlueprintCommandListener;)V

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/view/layout/KeyguardBlueprintCommandListener;->layoutCommand:Lcom/android/systemui/keyguard/ui/view/layout/KeyguardBlueprintCommandListener$KeyguardLayoutManagerCommand;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/ui/view/layout/KeyguardBlueprintCommandListener$start$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/ui/view/layout/KeyguardBlueprintCommandListener$start$1;-><init>(Lcom/android/systemui/keyguard/ui/view/layout/KeyguardBlueprintCommandListener;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/view/layout/KeyguardBlueprintCommandListener;->commandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    const-string v1, "blueprint"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->registerCommand(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
