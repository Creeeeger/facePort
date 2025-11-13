.class public final Lcom/android/keyguard/KeyguardSwipeViewController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSwipeViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSwipeViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSwipeViewController$1;->this$0:Lcom/android/keyguard/KeyguardSwipeViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSwipeViewController$1;->this$0:Lcom/android/keyguard/KeyguardSwipeViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSwipeViewController;->mSwipeDetector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->initDimens$5()V

    return-void
.end method
