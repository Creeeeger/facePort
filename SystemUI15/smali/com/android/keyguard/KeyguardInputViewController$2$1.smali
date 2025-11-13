.class public final Lcom/android/keyguard/KeyguardInputViewController$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$1:Lcom/android/keyguard/KeyguardInputViewController$2;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardInputViewController$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardInputViewController$2$1;->this$1:Lcom/android/keyguard/KeyguardInputViewController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController$2$1;->this$1:Lcom/android/keyguard/KeyguardInputViewController$2;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardInputViewController;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardInputViewController;->dismissTips(Z)V

    return-void
.end method
