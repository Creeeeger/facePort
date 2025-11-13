.class final Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$onInit$2;
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
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$onInit$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$onInit$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    sget-object v1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->KEY_HELP_TEXT_VISIBILITY:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->getLeftView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$onInit$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->shortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->hasShortcut(I)Z

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;IZ)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
