.class Lcom/android/internal/policy/DecorView$3;
.super Ljava/lang/Object;
.source "DecorView.java"

# interfaces
.implements Lcom/samsung/android/multiwindow/BlinkEffectPopup$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/DecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/policy/DecorView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/policy/DecorView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/policy/DecorView;

    .line 624
    iput-object p1, p0, Lcom/android/internal/policy/DecorView$3;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onStateChanged(Z)V
    .locals 1
    .param p1, "isActivated"    # Z

    .line 627
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$3;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0, p1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmIsActivatedBlinkEffect(Lcom/android/internal/policy/DecorView;Z)V

    .line 628
    return-void
.end method
