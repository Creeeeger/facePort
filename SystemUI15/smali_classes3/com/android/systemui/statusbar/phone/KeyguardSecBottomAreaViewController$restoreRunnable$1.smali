.class public final Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$restoreRunnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$restoreRunnable$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$restoreRunnable$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->nowBarVisible:Z

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->access$updateFinalShortcut(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    return-void
.end method
