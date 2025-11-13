.class public final Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$6;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFolderStateChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$6;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->reset$1()V

    return-void
.end method
