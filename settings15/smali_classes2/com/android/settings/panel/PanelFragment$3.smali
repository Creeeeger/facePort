.class public final Lcom/android/settings/panel/PanelFragment$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/panel/PanelFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/panel/PanelFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/panel/PanelFragment$3;->this$0:Lcom/android/settings/panel/PanelFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment$3;->this$0:Lcom/android/settings/panel/PanelFragment;

    invoke-virtual {p0}, Lcom/android/settings/panel/PanelFragment;->createPanelContent()V

    return-void
.end method
