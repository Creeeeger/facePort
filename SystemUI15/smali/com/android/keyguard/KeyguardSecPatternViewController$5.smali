.class public final Lcom/android/keyguard/KeyguardSecPatternViewController$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecPatternViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$5;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFolderStateChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$5;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->reset$1()V

    return-void
.end method
